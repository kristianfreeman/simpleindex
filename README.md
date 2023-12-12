# simpleindexer

This is a basic Rails application that allows you to fast-track indexing of new content on your websites. It's roughly similar to [Tag Parrot](https://tagparrot.com/) but is single-tenant, open-source, and free.

You can use it via `rails console` -- a UI will come later.

In order for the jobs to authenticate with Google Cloud directly, you will need to add a Google Cloud JSON keyfile at `config/google-cloud.json`.
