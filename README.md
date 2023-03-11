
# Repository Search Application
This is a simple web application built with Ruby on Rails that allows users to search for repositories on GitHub using the Octokit API.

## Running the Application
To run the application, follow these steps:

1. Clone the repository to your local machine.
2. In your terminal, navigate to the cloned repository and run `bundle install` to install all the necessary dependencies.
3. Run `rails server` to start the server.
4. Open your web browser and navigate to http://localhost:3000/search.
5. Enter a search query in the input field and click on the "Search" button to see the list of repositories matching your query.

## Limitations
The app is limited by the GitHub API rate limiting, which may prevent users from making too many requests in a short period of time. The current implementation also limits the number of results to 100 repositories per query, which may not be sufficient for users with broader search terms.

## Future Enhancements
- Implement pagination to display more search results.
- Add more search criteria, such as language or topic, to allow users to search more specifically.
- Handle errors and edge cases more robustly.
- Improve and expand the test suite to ensure the app works as expected under various conditions.