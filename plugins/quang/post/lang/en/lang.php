<?php return [
    'plugin' => [
        'name' => 'Post',
        'description' => ''
    ],
    'settings' => [
        'category_title' => 'Category List',
        'category_description' => 'Displays a list of blog categories on the page.',
        'category_slug' => 'Category slug',
        'category_slug_description' => "Look up the blog category using the supplied slug value. This property is used by the default component partial for marking the currently active category.",
        'category_display_empty' => 'Display empty categories',
        'category_display_empty_description' => 'Show categories that do not have any posts.',
        'category_page' => 'Category page',
        'category_page_description' => 'Name of the category page file for the category links. This property is used by the default component partial.',
        'post_title' => 'Post',
        'post_description' => 'Displays a blog post on the page.',
        'post_slug' => 'Post slug',
        'post_slug_description' => "Look up the blog post using the supplied slug value.",
        'post_category' => 'Category page',
        'post_category_description' => 'Name of the category page file for the category links. This property is used by the default component partial.',
        'posts_title' => 'Post List',
        'posts_description' => 'Displays a list of latest blog posts on the page.',
        'posts_pagination' => 'Page number',
        'posts_pagination_description' => 'This value is used to determine what page the user is on.',
        'posts_filter' => 'Category filter',
        'posts_filter_description' => 'Enter a category slug or URL parameter to filter the posts by. Leave empty to show all posts.',
        'posts_per_page' => 'Posts per page',
        'posts_per_page_validation' => 'Invalid format of the posts per page value',
        'posts_no_posts' => 'No posts message',
        'posts_no_posts_description' => 'Message to display in the blog post list in case if there are no posts. This property is used by the default component partial.',
        'posts_no_posts_default' => 'No posts found',
        'posts_order' => 'Post order',
        'posts_order_description' => 'Attribute on which the posts should be ordered',
        'posts_category' => 'Category page',
        'posts_category_description' => 'Name of the category page file for the "Posted into" category links. This property is used by the default component partial.',
        'posts_post' => 'Post page',
        'posts_post_description' => 'Name of the blog post page file for the "Learn more" links. This property is used by the default component partial.',
        'posts_except_post' => 'Except post',
        'posts_except_post_description' => 'Enter ID/URL or variable with post ID/URL you want to exclude. You may use a comma-separated list to specify multiple posts.',
        'posts_except_post_validation' => 'Post exceptions must be a single slug or ID, or a comma-separated list of slugs and IDs',
        'posts_except_categories' => 'Except categories',
        'posts_except_categories_description' => 'Enter a comma-separated list of category slugs or variable with such a list of categories you want to exclude',
        'posts_except_categories_validation' => 'Category exceptions must be a single category slug, or a comma-separated list of slugs',
        'rssfeed_blog' => 'Blog page',
        'rssfeed_blog_description' => 'Name of the main blog page file for generating links. This property is used by the default component partial.',
        'rssfeed_title' => 'RSS Feed',
        'rssfeed_description' => 'Generates an RSS feed containing posts from the blog.',
        'group_links' => 'Links',
        'group_exceptions' => 'Exceptions'
    ],
];