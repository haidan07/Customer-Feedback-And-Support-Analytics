CREATE TABLE agents (
    agent_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY,
    agent_id INT,
    customer_name VARCHAR(50),
    issue TEXT,
    date_opened DATE,
    FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
);

CREATE TABLE feedback (
    feedback_id INT PRIMARY KEY,
    ticket_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comments TEXT,
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);
