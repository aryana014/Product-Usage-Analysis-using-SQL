Product Usage Analysis using SQL
Overview

This is a personal product analytics project created to practice using SQL for data-driven product thinking.
The project focuses on understanding how users interact with a product, identifying feature usage patterns, and spotting user drop-off points across key stages.

The emphasis is on insight generation and decision-making, not advanced SQL or production deployment.

Objective

Understand user behavior across product interaction stages

Identify where users drop off in the product journey

Practice translating data insights into product improvement hypotheses

Dataset Description

The project uses synthetic (sample) data generated to simulate real-world product usage.

Tables

users: Contains basic user signup information

events: Records user actions such as signup, feature views, and interactions

This structure mimics a simple event-tracking system commonly used in product analytics.

Project Structure
product-usage-analysis-sql
│
├── database.sql   # Table definitions and sample data
├── queries.sql    # SQL queries for usage and drop-off analysis
└── notes.txt      # Plain-English insights and product hypotheses

Analysis Approach

Used basic SQL queries (SELECT, GROUP BY, COUNT) to analyze user actions

Compared action frequencies to understand feature engagement

Identified users with fewer actions to infer potential drop-offs

Interpreted results qualitatively to form product improvement hypotheses

Key Insights

Feature usage drops significantly after initial interactions

A majority of users do not progress beyond early product stages

The largest drop-off appears between viewing a feature and taking action

Product Hypotheses

Onboarding flow may not clearly guide users to next steps

Calls-to-action may not be prominent or compelling enough

Reducing friction in early stages could improve engagement

Tools Used

SQL (conceptual usage for analysis)

AI tools for generating sample data and queries

Text editor for documentation and insights

Notes

This is a learning-focused personal project

Data is simulated and not from real users

The project does not involve deploying or executing SQL in a production environment

Key Learning

This project helped reinforce how basic SQL can support product decisions by uncovering usage patterns and guiding hypothesis-driven improvements.
