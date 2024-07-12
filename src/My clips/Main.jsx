import React from 'react'
import { StarIcon } from '@heroicons/react/24/solid'

const clip = [
    {
        "title": "Videos 1",
        "desc": "Description for video 1",
        "url": "https://youtu.be/eONB3Lx8iqk?si=zauRvaz2DmnYQCiQ"
    },
    {
        "title": "My Clips 1",
        "desc": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus facilisis tortor vel risus aliquam maximus. Nunc cursus tristique nisi faucibus pretium. Vivamus consectetur metus eu ex mattis, in maximus nibh vehicula. Cras sodales quam sit amet porta faucibus. Suspendisse aliquet lacus et luctus iaculis. Pellentesque accumsan tortor nec lacus iaculis, vel tempus nulla volutpat. Praesent interdum ac tellus eu blandit. Vestibulum id odio luctus velit aliquam lacinia eget sed justo.",
        "url": "https://youtu.be/lu6rXdUK2G8?si=glwkS4fUQdyyhSMM"
    },
    {
        "title": "My Clips 2",
        "desc": "Donec sit amet velit pulvinar, ultricies eros vel, varius nibh. Praesent euismod ligula eu magna bibendum consequat. In varius sed justo sit amet condimentum. Aenean scelerisque augue mattis sapien posuere malesuada. Etiam vel dolor diam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus consectetur gravida volutpat.",
        "url": "https://youtu.be/5FZUYBuE8_8?si=XkKTN2fN4iKs8XJD"
    },
    {
        "title": "My Clips 3",
        "desc": "Praesent tincidunt vulputate mauris, sed porta diam vestibulum id. Sed ornare vel ipsum vel tincidunt. Aenean turpis lorem, lobortis non quam eget, facilisis venenatis metus. Maecenas elit sapien, commodo ut varius eu, porta in nibh. Curabitur porta nunc id justo vestibulum dictum. Suspendisse ornare pellentesque semper. Curabitur ut lorem tincidunt, viverra elit eu, luctus diam.",
        "url": "https://youtu.be/QqGmMWYBTts?si=Tk-DC-xNpMaYxWUh"
    },
    {
        "title": "My Clips 4",
        "desc": "Proin elementum venenatis nisl, a lacinia nisi vulputate eu. Suspendisse accumsan aliquam luctus. Aenean efficitur euismod enim, at efficitur felis fringilla eu. Duis placerat nulla id orci pellentesque, vel ullamcorper ante blandit. Donec dignissim nulla id metus tempus fringilla. Praesent efficitur dolor erat. Cras odio neque, fringilla vel augue at, blandit dictum ante.",
        "url": "https://youtu.be/z6_P3FOXNvA?si=MS2imV-hIGpohrS2"
        

        
    }
]

const Main = () => {
    const convertToEmbedUrl = (url) => url.replace("youtu.be/", "youtube.com/embed/").split('?')[0];
    return (
        <div className='pt-10 container mx-auto px-20 text-center'>
            <h1 className='font-bold text-blue-800 text-2xl'>My Clips</h1>
            <div className="mt-5 flex justify-center">
                <iframe
                    width="706"
                    height="403"
                    src={convertToEmbedUrl(clip[0].url)}
                    title={clip[0].title}
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowFullScreen
                ></iframe>
            </div>
            <div className="mt-14 grid sm:grid-cols-1 lg:grid-cols-2 gap-4">
                {clip.slice(1, 6).map((video, index) => (
                    <div key={index} className="p-4">
                        <iframe
                            width="100%"
                            height="305"
                            src={convertToEmbedUrl(video.url)}
                            title={video.title}
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowFullScreen
                        ></iframe>
                        <div className="flex items-center justify-between mt-2">
                            <h2 className="font-bold text-lg">{video.title}</h2>
                            <div className="flex items-center">
                                {[...Array(3)].map((_, i) => (
                                    <StarIcon key={i} className="size-7 text-yellow-500" />
                                ))}
                            </div>
                        </div>
                        <p className="mt-1 text-start">{video.desc}</p>
                    </div>
                ))}
            </div>
        </div>
    )
}

export default Main;