.class Lja/burhanrashid52/photoeditor/Vector2D;
.super Landroid/graphics/PointF;
.source "Vector2D.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/graphics/PointF;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    return-void
.end method

.method static getAngle(Lja/burhanrashid52/photoeditor/Vector2D;Lja/burhanrashid52/photoeditor/Vector2D;)F
    .registers 8
    .param p0, "vector1"    # Lja/burhanrashid52/photoeditor/Vector2D;
    .param p1, "vector2"    # Lja/burhanrashid52/photoeditor/Vector2D;

    .line 16
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/Vector2D;->normalize()V

    .line 17
    invoke-direct {p1}, Lja/burhanrashid52/photoeditor/Vector2D;->normalize()V

    .line 18
    iget v0, p1, Lja/burhanrashid52/photoeditor/Vector2D;->y:F

    float-to-double v0, v0

    iget v2, p1, Lja/burhanrashid52/photoeditor/Vector2D;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lja/burhanrashid52/photoeditor/Vector2D;->y:F

    float-to-double v2, v2

    iget v4, p0, Lja/burhanrashid52/photoeditor/Vector2D;->x:F

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v0, v0, v2

    .line 19
    .local v0, "degrees":D
    double-to-float v2, v0

    return v2
.end method

.method private normalize()V
    .registers 4

    .line 23
    iget v0, p0, Lja/burhanrashid52/photoeditor/Vector2D;->x:F

    iget v1, p0, Lja/burhanrashid52/photoeditor/Vector2D;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lja/burhanrashid52/photoeditor/Vector2D;->y:F

    iget v2, p0, Lja/burhanrashid52/photoeditor/Vector2D;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 24
    .local v0, "length":F
    iget v1, p0, Lja/burhanrashid52/photoeditor/Vector2D;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lja/burhanrashid52/photoeditor/Vector2D;->x:F

    .line 25
    iget v1, p0, Lja/burhanrashid52/photoeditor/Vector2D;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lja/burhanrashid52/photoeditor/Vector2D;->y:F

    .line 26
    return-void
.end method
