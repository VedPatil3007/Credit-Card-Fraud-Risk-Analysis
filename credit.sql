SELECT *
FROM credit_card_transactions;


-- Q1. What is the overall fraud rate, and how does the transaction value compare between fraudulent and legitimate transactions?

SELECT
    CASE
        WHEN isFraud = 1 THEN 'Fraudulent'
        ELSE 'Legitimate'
    END AS transaction_status,
    COUNT(*) AS total_transactions,
    SUM(transaction_amount) AS total_transaction_value,
    ROUND(AVG(transaction_amount), 2) AS avg_transaction_amount,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM credit_card_transactions), 2
    ) AS transaction_percentage
FROM credit_card_transactions
GROUP BY is_fraud;


-- Q2. How does the number of fraudulent transactions change month-wise?

SELECT
    DATE_TRUNC('month', transaction_date) AS transaction_month,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_percentage
FROM credit_card_transactions
GROUP BY DATE_TRUNC('month', transaction_date)
ORDER BY transaction_month;


-- Q3. How accurately do different Fraud Risk categories correspond with actual fraudulent transactions?

SELECT
    fraud_risk,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS actual_fraud_cases,
    COUNT(*) - SUM(is_fraud) AS legitimate_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS actual_fraud_percentage
FROM credit_card_transactions
GROUP BY fraud_risk
ORDER BY actual_fraud_percentage DESC;


-- Q4. Which types of fraud contribute the most to actual fraudulent transactions?

SELECT
    fraud_type,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_percentage
FROM credit_card_transactions
GROUP BY fraud_type
ORDER BY fraudulent_transactions DESC;


-- Q5. Which transaction categories experience the highest fraud rates?

SELECT
    transaction_category,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_percentage,
    SUM(
        CASE
            WHEN is_fraud = 1 THEN transaction_amount
            ELSE 0
        END
    ) AS fraud_amount
FROM credit_card_transactions
GROUP BY transaction_category
ORDER BY fraud_percentage DESC;


-- Q6. Which banks have the highest number of fraudulent transactions?

SELECT
    bank,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_percentage
FROM credit_card_transactions
GROUP BY bank
ORDER BY fraudulent_transactions DESC;


-- Q7. Which merchants are associated with the highest fraudulent transaction amounts?

SELECT
    merchant_name,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    SUM(
        CASE
            WHEN is_fraud = 1 THEN transaction_amount
            ELSE 0
        END
    ) AS total_fraud_amount,
    ROUND(
        AVG(
            CASE
                WHEN is_fraud = 1 THEN transaction_amount
            END
        ), 2
    ) AS avg_fraud_transaction
FROM credit_card_transactions
GROUP BY merchant_name
ORDER BY total_fraud_amount DESC;


-- Q8. Which states have the highest fraudulent transaction rates?

SELECT
    state,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_percentage
FROM credit_card_transactions
GROUP BY state
ORDER BY fraud_percentage DESC;


-- Q9. Which card types are more frequently associated with fraudulent transactions?

SELECT
    card_type,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_percentage,
    ROUND(AVG(transaction_amount), 2) AS avg_transaction_amount
FROM credit_card_transactions
GROUP BY card_type
ORDER BY fraud_percentage DESC;


-- Q10. How does the Fraud Score relate to actual fraudulent transactions?

SELECT
    CASE
        WHEN fraud_score BETWEEN 0 AND 25 THEN '0-25'
        WHEN fraud_score BETWEEN 26 AND 50 THEN '26-50'
        WHEN fraud_score BETWEEN 51 AND 75 THEN '51-75'
        ELSE '76-100'
    END AS fraud_score_range,
    COUNT(*) AS total_transactions,
    SUM(is_fraud) AS fraudulent_transactions,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_percentage
FROM credit_card_transactions
GROUP BY fraud_score_range
ORDER BY MIN(fraud_score);