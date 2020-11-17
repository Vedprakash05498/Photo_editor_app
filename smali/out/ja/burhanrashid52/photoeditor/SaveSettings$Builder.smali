.class public Lja/burhanrashid52/photoeditor/SaveSettings$Builder;
.super Ljava/lang/Object;
.source "SaveSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/SaveSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private compressQuality:I

.field private isClearViewsEnabled:Z

.field private isTransparencyEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->isTransparencyEnabled:Z

    .line 43
    iput-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->isClearViewsEnabled:Z

    .line 44
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->compressQuality:I

    return-void
.end method

.method static synthetic access$000(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    .line 41
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->isClearViewsEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)Z
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    .line 41
    iget-boolean v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->isTransparencyEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    .line 41
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$300(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;)I
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/SaveSettings$Builder;

    .line 41
    iget v0, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->compressQuality:I

    return v0
.end method


# virtual methods
.method public build()Lja/burhanrashid52/photoeditor/SaveSettings;
    .registers 3

    .line 93
    new-instance v0, Lja/burhanrashid52/photoeditor/SaveSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lja/burhanrashid52/photoeditor/SaveSettings;-><init>(Lja/burhanrashid52/photoeditor/SaveSettings$Builder;Lja/burhanrashid52/photoeditor/SaveSettings$1;)V

    return-object v0
.end method

.method public setClearViewsEnabled(Z)Lja/burhanrashid52/photoeditor/SaveSettings$Builder;
    .registers 2
    .param p1, "clearViewsEnabled"    # Z

    .line 66
    iput-boolean p1, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->isClearViewsEnabled:Z

    .line 67
    return-object p0
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lja/burhanrashid52/photoeditor/SaveSettings$Builder;
    .registers 2
    .param p1, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;

    .line 77
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 78
    return-object p0
.end method

.method public setCompressQuality(I)Lja/burhanrashid52/photoeditor/SaveSettings$Builder;
    .registers 2
    .param p1, "compressQuality"    # I

    .line 88
    iput p1, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->compressQuality:I

    .line 89
    return-object p0
.end method

.method public setTransparencyEnabled(Z)Lja/burhanrashid52/photoeditor/SaveSettings$Builder;
    .registers 2
    .param p1, "transparencyEnabled"    # Z

    .line 55
    iput-boolean p1, p0, Lja/burhanrashid52/photoeditor/SaveSettings$Builder;->isTransparencyEnabled:Z

    .line 56
    return-object p0
.end method
