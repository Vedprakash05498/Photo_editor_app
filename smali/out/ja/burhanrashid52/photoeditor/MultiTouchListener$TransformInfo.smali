.class Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;
.super Ljava/lang/Object;
.source "MultiTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/MultiTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformInfo"
.end annotation


# instance fields
.field deltaAngle:F

.field deltaScale:F

.field deltaX:F

.field deltaY:F

.field maximumScale:F

.field minimumScale:F

.field pivotX:F

.field pivotY:F

.field final synthetic this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;


# direct methods
.method private constructor <init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;Lja/burhanrashid52/photoeditor/MultiTouchListener$1;)V
    .registers 3
    .param p1, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;
    .param p2, "x1"    # Lja/burhanrashid52/photoeditor/MultiTouchListener$1;

    .line 229
    invoke-direct {p0, p1}, Lja/burhanrashid52/photoeditor/MultiTouchListener$TransformInfo;-><init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;)V

    return-void
.end method
