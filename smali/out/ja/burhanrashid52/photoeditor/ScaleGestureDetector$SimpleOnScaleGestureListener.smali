.class Lja/burhanrashid52/photoeditor/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Lja/burhanrashid52/photoeditor/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "detector"    # Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "detector"    # Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/View;Lja/burhanrashid52/photoeditor/ScaleGestureDetector;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "detector"    # Lja/burhanrashid52/photoeditor/ScaleGestureDetector;

    .line 106
    return-void
.end method
