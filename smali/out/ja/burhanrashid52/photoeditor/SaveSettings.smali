.class public Lja/burhanrashid52/photoeditor/SaveSettings;
.super Ljava/lang/Object;
.source "SaveSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/burhanrashid52/photoeditor/SaveSettings$Builder;
    }
.end annotation


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private compressQuality:I

.field private isClearViewsEnabled:Z

.field private isTransparencyEnabled:Z


# direct methods
.method private constructor <init>(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)V
    .registers 3
    .param p1, "builder"    # Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->access$000(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->isClearViewsEnabled:Z

    .line 36
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->access$100(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->isTransparencyEnabled:Z

    .line 37
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->access$200(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 38
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->access$300(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)I

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->compressQuality:I

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;Lja/burhanrashid52/photoeditor/SaveSettings$1;)V
    .registers 3
    .param p1, "x0"    # Lja/burhanrashid52/photoeditor/SaveSettings$Builder;
    .param p2, "x1"    # Lja/burhanrashid52/photoeditor/SaveSettings$1;

    .line 12
    invoke-direct {p0, p1}, Lja/burhanrashid52/photoeditor/SaveSettings;-><init>(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)V

    return-void
.end method


# virtual methods
.method getCompressFormat()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .line 27
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method getCompressQuality()I
    .registers 2

    .line 31
    iget v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->compressQuality:I

    return v0
.end method

.method isClearViewsEnabled()Z
    .registers 2

    .line 23
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->isClearViewsEnabled:Z

    return v0
.end method

.method isTransparencyEnabled()Z
    .registers 2

    .line 19
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings;->isTransparencyEnabled:Z

    return v0
.end method
