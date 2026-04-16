class PostsController < ApplicationController

    def index
        @counter= 0
            @posts = [
        {
            id: 1,
            title: "First Post",
            content: "Hello world!",
            author: "Ahmed"
        },
        {
            id: 2,
            title: "Ruby Tips",
            content: "Learn arrays and hashes.",
            author: "Sara"
        },
        {
            id: 3,
            title: "Rails Guide",
            content: "Follow the official Rails guide.",
            author: "Omar"
        }
        ]

    end 

end
