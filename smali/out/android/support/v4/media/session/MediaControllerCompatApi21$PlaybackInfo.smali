.class public Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 200
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .registers 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 217
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .registers 3
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 204
    invoke-static {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    .line 205
    .local v0, "attrs":Landroid/media/AudioAttributes;
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .registers 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 213
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .registers 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 196
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .registers 2
    .param p0, "volumeInfoObj"    # Ljava/lang/Object;

    .line 209
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v0

    return v0
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 228
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    .line 230
    const/4 v0, 0x7

    return v0

    .line 232
    :cond_a
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_14

    .line 233
    const/4 v0, 0x6

    return v0

    .line 237
    :cond_14
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2b

    packed-switch v0, :pswitch_data_2c

    .line 261
    const/4 v0, 0x3

    return v0

    .line 252
    :pswitch_21
    const/4 v0, 0x2

    return v0

    .line 258
    :pswitch_23
    const/4 v0, 0x5

    return v0

    .line 250
    :pswitch_25
    return v2

    .line 248
    :pswitch_26
    const/16 v0, 0x8

    return v0

    .line 246
    :pswitch_29
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_2b
    return v1

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_29
        :pswitch_26
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method
