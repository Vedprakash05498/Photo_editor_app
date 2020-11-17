.class final Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/MultiTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;


# direct methods
.method private constructor <init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;Lja/burhanrashid52/photoeditor/MultiTouchListener$1;)V
    .registers 3
    .param p1, "x0"    # Lja/burhanrashid52/photoeditor/MultiTouchListener;
    .param p2, "x1"    # Lja/burhanrashid52/photoeditor/MultiTouchListener$1;

    .line 256
    invoke-direct {p0, p1}, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;-><init>(Lja/burhanrashid52/photoeditor/MultiTouchListener;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 267
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 268
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$1000(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 269
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$1000(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

    move-result-object v0

    invoke-interface {v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;->onLongClick()V

    .line 271
    :cond_14
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 259
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$1000(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 260
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/MultiTouchListener$GestureListener;->this$0:Lja/burhanrashid52/photoeditor/MultiTouchListener;

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener;->access$1000(Lja/burhanrashid52/photoeditor/MultiTouchListener;)Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;

    move-result-object v0

    invoke-interface {v0}, Lja/burhanrashid52/photoeditor/MultiTouchListener$OnGestureControl;->onClick()V

    .line 262
    :cond_11
    const/4 v0, 0x1

    return v0
.end method
