# Docker Image for Pork
A Docker image for running the legacy AOL Instant Messenger (AIM) and IRC client 'pork' by [Ryan McCabe](http://dev.ojnk.org).

For now this uses the binary from the Debian Stretch archives, which was the last Debian release to include it. It's very outdated and there are features that likely don't work.

## Running Pork
You can run pork by issuing the following

    docker run -v /Users/me/porkfiles:/root \
        -e AIM_SERVER='aim.chivanet.org' \
        -it jgknight/pork:latest

Once it's running, you can issue `/help` to see the available commands.

    /connect myusername
    /away I'm not here!
    /buddy add_group Bots
    /buddy add smartersmarterchild Bots
    /profile Welcome to my Profile, <b>%n!</b>
    /msg smartersmarterchild Hello!

Pork supports specifying the following env variables (`-e`):
* `AIM_SERVER` - address of the OSCAR host to connect to
* `AIM_PORT` - port number of the OSCAR host to connect to

While the original AIM servers are long gone, you can connect to modern open source servers such as running your own [Retro AIM Server](https://github.com/mk6i/retro-aim-server), or using a public AIM service such as [ChivaNet Internet Services](https://aim.chivanet.org).


## To Do
 * Automate pushing to Docker Hub from GitHub
 * Compile from source on a modern OS image
 * Collect useful Perl scripts
