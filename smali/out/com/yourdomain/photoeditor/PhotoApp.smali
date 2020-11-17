.class public Lcom/yourdomain/photoeditor/PhotoApp;
.super Landroid/app/Application;
.source "PhotoApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sPhotoApp:Lcom/yourdomain/photoeditor/PhotoApp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/yourdomain/photoeditor/PhotoApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yourdomain/photoeditor/PhotoApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getPhotoApp()Lcom/yourdomain/photoeditor/PhotoApp;
    .registers 1

    .line 47
    sget-object v0, Lcom/yourdomain/photoeditor/PhotoApp;->sPhotoApp:Lcom/yourdomain/photoeditor/PhotoApp;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .line 51
    sget-object v0, Lcom/yourdomain/photoeditor/PhotoApp;->sPhotoApp:Lcom/yourdomain/photoeditor/PhotoApp;

    invoke-virtual {v0}, Lcom/yourdomain/photoeditor/PhotoApp;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    sput-object p0, Lcom/yourdomain/photoeditor/PhotoApp;->sPhotoApp:Lcom/yourdomain/photoeditor/PhotoApp;

    .line 44
    return-void
.end method
