class YoutubeModel {
  final String title;
  final String description;
  final String thumbnail;
  final String publishedTime;
  final String channelTitle;
  final String channelAvatar;
  final String viewCount;
  final String likeCount;
  final String dislikeCount;

  YoutubeModel({
    this.title,
    this.description,
    this.thumbnail,
    this.publishedTime,
    this.channelTitle,
    this.channelAvatar,
    this.viewCount,
    this.likeCount,
    this.dislikeCount,
  });
}

List<YoutubeModel> youtubeModel = [
  YoutubeModel(
    title: "My Cleanest Setup - RGB Free",
    description: "This is the cleanest setup I've done to date.",
    thumbnail:
        "https://i.ytimg.com/vi/haMV_nkkYsA/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLD-mXTWbph48dVQlacO3wVXJDI1HQ",
    publishedTime: "2 days ago",
    channelTitle: "Dave Lee",
    channelAvatar:
        "https://yt3.ggpht.com/a/AATXAJwsFn2XyD55vVR6Ykhso93F1qaY-D0NrMDh5B5K4A=s48-c-k-c0xffffffff-no-rj-mo",
    viewCount: "180K views",
    likeCount: "18K",
    dislikeCount: "244",
  ),
  YoutubeModel(
    title: "Sombra Mains Are Very Loved! - Overwatch Streamer Moments Ep. 132",
    description:
        "Sombra Mains Are Very Loved! - Overwatch Streamer Moments Ep. 132",
    thumbnail:
        "https://i.ytimg.com/vi/M2zDLv3CR3U/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLCZI5hS_3eBuffQgZt90FXoiv0rNQ",
    publishedTime: "2 days ago",
    channelTitle: "FreshNuts",
    channelAvatar:
        "https://yt3.ggpht.com/a/AATXAJwe70IxzyekjT0ySkWO9lB4OyPFl3q3ynwm4JFhPQ=s100-c-k-c0xffffffff-no-rj-mo",
    viewCount: "20K views",
    likeCount: "1.4K",
    dislikeCount: "24K",
  ),
  YoutubeModel(
    title: "Samsung Galaxy Z Flip Unboxing: It's Growing on Me!",
    description:
        "Unboxing and switching to to perhaps the most interesting phome in the world...",
    thumbnail:
        "https://i.ytimg.com/vi/dPaHNTnN0eE/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLBGE2t9mxzBiHb50LJrBvJDImfUfg",
    publishedTime: "6 months ago",
    channelTitle: "Marques Brownlee",
    channelAvatar:
        "https://yt3.ggpht.com/a-/AN66SAwxVf-12cuqSiSP2HKPkpDqI0NCAghAiE7IVg=s288-mo-c-c0xffffffff-rj-k-no",
    viewCount: "3.3M views",
    likeCount: "91K",
    dislikeCount: "2.3K",
  ),
  YoutubeModel(
    title: "Pixel 3 XL Second Impression: Notch City!",
    description: "Marques Brownlee gives his opinion on Pixel 3 XL",
    thumbnail:
        "https://i.ytimg.com/vi/Lg9N8XAZ6u4/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLC5n3UMS9pjWuzugjML9AcoqbEMOA",
    publishedTime: "1 year ago",
    channelTitle: "Marqueus Brownlee",
    channelAvatar:
        "https://yt3.ggpht.com/a-/AN66SAwxVf-12cuqSiSP2HKPkpDqI0NCAghAiE7IVg=s288-mo-c-c0xffffffff-rj-k-no",
    viewCount: "1.9M views",
    likeCount: "59k",
    dislikeCount: "1.9K",
  ),
  YoutubeModel(
    title: "Eminem - Venom",
    description:
        "Listen to Venom (Music From The Motion Picture), out now: http://smarturl.it/EminemVenom",
    thumbnail:
        "https://i.ytimg.com/vi/8CdcCD5V-d8/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLA7A5_7k458KMkDNG0sweixgq856g",
    publishedTime: "1 year ago",
    channelTitle: "EminemMusic",
    channelAvatar:
        "https://yt3.ggpht.com/-qtnbIDAbSNQ/AAAAAAAAAAI/AAAAAAAAAJc/Zt6FE6ofr1I/s88-nd-c-c0xffffffff-rj-k-no/photo.jpg",
    viewCount: "53M views",
    likeCount: "20k",
    dislikeCount: "51",
  ),
  YoutubeModel(
    title: "DJ Snake - Taki Taki ft. Selena Gomez, Ozuna, Cardi B",
    description:
        "DJ Snake - Taki Taki ft. Selena Gomez, Ozuna, Cardi takes you on a ride",
    thumbnail:
        "https://i.ytimg.com/vi/ixkoVwKQaJg/hqdefault.jpg?sqp=-oaymwEZCNACELwBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDrYjizQef0rnqvBc0mZyU3k13yrg",
    publishedTime: "2 years ago",
    channelTitle: "DJ Snake",
    channelAvatar:
        "https://yt3.ggpht.com/a-/AN66SAzkcvkwVn1Y5Zdpb1jkn9zyJ7vGxO8qHBxCTg=s288-mo-c-c0xffffffff-rj-k-no",
    viewCount: "50M views",
    likeCount: "34K",
    dislikeCount: "2K",
  ),
  YoutubeModel(
    title: "Iphone 6 Bend Test",
    description: "Does the iPhone 6 Plus bend under pressure?",
    thumbnail:
        "https://i.ytimg.com/vi/znK652H6yQM/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDyvp6SEmSt5wTlhrQ2aDOGzWQQSA",
    publishedTime: "5 years ago",
    channelTitle: "Unbox Therapy",
    channelAvatar:
        "https://yt3.ggpht.com/a/AATXAJw-QM8qKN656goqN2rMXFNZiqs13_DzxBrALSmY_w=s100-c-k-c0xffffffff-no-rj-mo",
    viewCount: "17M views",
    likeCount: "330K",
    dislikeCount: "39K",
  ),
];

List<YoutubeModel> youtubeSubscription = [
  YoutubeModel(
    title: "The Dva Meta Is Back! - Overwatch Streamer Moments Ep. 152",
    description: "The Dva Meta Is Back! - Overwatch Streamer Moments Ep. 152",
    thumbnail:
        "https://i.ytimg.com/vi/E3I9hy93u0Y/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDa-OldpgBT8XzqKwyxHdMcnXyi2A",
    publishedTime: "1 day ago",
    channelTitle: "FreshNuts",
    channelAvatar:
        "https://yt3.ggpht.com/a/AATXAJwe70IxzyekjT0ySkWO9lB4OyPFl3q3ynwm4JFhPQ=s48-c-k-c0xffffffff-no-rj-mo",
    viewCount: "20K views",
    likeCount: "1K",
    dislikeCount: "15",
  ),
  YoutubeModel(
    title: "My Cleanest Setup - RGB Free",
    description: "This is the cleanest setup I've done to date.",
    thumbnail:
        "https://i.ytimg.com/vi/haMV_nkkYsA/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLD-mXTWbph48dVQlacO3wVXJDI1HQ",
    publishedTime: "2 days ago",
    channelTitle: "Dave Lee",
    channelAvatar:
        "https://yt3.ggpht.com/a/AATXAJwsFn2XyD55vVR6Ykhso93F1qaY-D0NrMDh5B5K4A=s48-c-k-c0xffffffff-no-rj-mo",
    viewCount: "180K views",
    likeCount: "18K",
    dislikeCount: "244",
  ),
  YoutubeModel(
    title: "Dune Official Trailer",
    description:
        "Beyond fear, destiny awaits. Watch the trailer for the highly anticipated #DuneMovie now. ",
    thumbnail:
        "https://i.ytimg.com/vi/n9xhJrPXop4/hqdefault.jpg?sqp=-oaymwEYCKgBEF5IVfKriqkDCwgBFQAAiEIYAXAB&rs=AOn4CLCBR6ILawaT3xzLKbKfCb9ht40raQ",
    publishedTime: "3 days ago",
    channelTitle: "Warner Bros. Pictures",
    channelAvatar:
        "https://yt3.ggpht.com/a/AATXAJzWoMA3RgR8Qc29M3lA3nMPMXT95BS-lHZEYJc7jw=s100-c-k-c0xffffffff-no-rj-mo",
    viewCount: "11M views",
    likeCount: "365K",
    dislikeCount: "10K",
  ),
  YoutubeModel(
    title: "If Programming Was An Anime Part 2",
    description: "Get the JomaClass membership: https://www.jomaclass.com/",
    thumbnail:
        "https://i.ytimg.com/vi/OTfp2_SwxHk/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLCUzpCKBGG53kS9kyxUZAIsLTvDOw",
    publishedTime: "2 weeks ago",
    channelTitle: "Joma Tech",
    channelAvatar:
        "https://yt3.ggpht.com/a/AATXAJwnVxHV9cR_nofTeCXS3x2H2jRQjH3YEq8sYqpM=s100-c-k-c0xffffffff-no-rj-mo",
    viewCount: "484K views",
    likeCount: "45K",
    dislikeCount: "541",
  ),
];
