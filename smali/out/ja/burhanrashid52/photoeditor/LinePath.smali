.class Lja/burhanrashid52/photoeditor/LinePath;
.super Ljava/lang/Object;
.source "LinePath.java"


# instance fields
.field private final mDrawPaint:Landroid/graphics/Paint;

.field private final mDrawPath:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 4
    .param p1, "drawPath"    # Landroid/graphics/Path;
    .param p2, "drawPaints"    # Landroid/graphics/Paint;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/LinePath;->mDrawPaint:Landroid/graphics/Paint;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/LinePath;->mDrawPath:Landroid/graphics/Path;

    .line 13
    return-void
.end method


# virtual methods
.method getDrawPaint()Landroid/graphics/Paint;
    .registers 2

    .line 16
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/LinePath;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method getDrawPath()Landroid/graphics/Path;
    .registers 2

    .line 20
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/LinePath;->mDrawPath:Landroid/graphics/Path;

    return-object v0
.end method
