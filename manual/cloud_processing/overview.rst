Cloud processing
================

What happens in the Byplay cloud?
#################################

Uploaded recordings are processed in order to prepare video and 3D data for
easier usage in VFX packages. This is what happens:

1. Video stabilization and compensation of off-center principal point
2. Generation of FBX files with camera movement and point cloud

Videos recorded directly from AR are often too shaky.
Also their principal point is not directly in the center.
By cropping every frame according to its principal point coordinates, we remove both problems.
`Check out byplay's fork of FFMPEG that has frame-by-frame cropping filter <https://github.com/byplay-io/ffmpeg-byplaycrop>`_

On mobile, all data generated from AR is stored in our own binary format. That guarantees smallest possible file size and good performance. Of course, VFX packages can't read that format. On the cloud machines we are running Blender with our scripts that understand that format and produce several FBX files and .blend scene

We make several different FBX files because virtually every VFX package uses different coordinate system convention. Some are right-hand, some are left-hand. Some have Y pointing up and Z depth, some other way around. To have FBX imported as smoothly as possible, we create one file for each VFX package


How much space can I use? Is there a limit?
____________________________________________________________________________________________________
At the moment, no limit. Upload as much as you want.


Where is the data stored?
____________________________________________________________________________________________________

We use `Google Cloud Storage <https://cloud.google.com/products/storage>`_. It provides:

- Fast upload and download times
- Availability
- Security

You can be sure that your videos are not stored on a PC at somebody's garage and can be stolen or burned down

Who has access to the data?
____________________________________________________________________________________________________

Only developers of Byplay, which is just Vadim (me) at the moment.

I follow best security practices such as two-factor authentication and encrypted drives.

Byplay isn't a huge corporation that can afford dedicated security engineers, but we do take security concerns very seriously.


Do you share uploaded videos or customer private data with other companies?
____________________________________________________________________________________________________
No. We are asking for money in the app because that's our business model: customer pays for the service. No advertisement, no selling data or emails.

What happens to my cloud videos if I cancel the subscription?
##################################################################
Nothing, they are yours forever.