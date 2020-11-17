.class Lja/burhanrashid52/photoeditor/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBitmapFromGLSurface(Landroid/opengl/GLSurfaceView;Ljavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .registers 18
    .param p0, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .line 82
    const/4 v9, 0x0

    .local v9, "x":I
    const/4 v10, 0x0

    .line 83
    .local v10, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v11

    .line 84
    .local v11, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v12

    .line 85
    .local v12, "h":I
    mul-int v0, v11, v12

    new-array v13, v0, [I

    .line 86
    .local v13, "bitmapBuffer":[I
    mul-int v0, v11, v12

    new-array v14, v0, [I

    .line 87
    .local v14, "bitmapSource":[I
    invoke-static {v13}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v15

    .line 88
    .local v15, "intBuffer":Ljava/nio/IntBuffer;
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move-object/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object v8, v15

    :try_start_25
    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    if-ge v0, v12, :cond_53

    .line 94
    mul-int v1, v0, v11

    .line 95
    .local v1, "offset1":I
    sub-int v2, v12, v0

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, v11

    .line 96
    .local v2, "offset2":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_34
    if-ge v3, v11, :cond_50

    .line 97
    add-int v4, v1, v3

    aget v4, v13, v4

    .line 98
    .local v4, "texturePixel":I
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 99
    .local v5, "blue":I
    shl-int/lit8 v6, v4, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    .line 100
    .local v6, "red":I
    const v7, -0xff0100

    and-int/2addr v7, v4

    or-int/2addr v7, v6

    or-int/2addr v7, v5

    .line 101
    .local v7, "pixel":I
    add-int v8, v2, v3

    aput v7, v14, v8
    :try_end_4d
    .catch Landroid/opengl/GLException; {:try_start_25 .. :try_end_4d} :catch_5b

    .line 96
    .end local v4    # "texturePixel":I
    .end local v5    # "blue":I
    .end local v6    # "red":I
    .end local v7    # "pixel":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 93
    .end local v3    # "j":I
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 106
    .end local v0    # "i":I
    .end local v1    # "offset1":I
    .end local v2    # "offset2":I
    :cond_53
    nop

    .line 107
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v11, v12, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 104
    :catch_5b
    move-exception v0

    .line 105
    .local v0, "e":Landroid/opengl/GLException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "source"    # Landroid/graphics/Bitmap;

    .line 29
    const/4 v0, 0x0

    .local v0, "firstX":I
    const/4 v1, 0x0

    .line 30
    .local v1, "firstY":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 31
    .local v2, "lastX":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 32
    .local v3, "lastY":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v4, v4, v5

    new-array v4, v4, [I

    .line 33
    .local v4, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 35
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_2b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_4b

    .line 36
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_48

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v6

    add-int/2addr v7, v5

    aget v7, v4, v7

    if-eqz v7, :cond_45

    .line 38
    move v0, v5

    .line 39
    goto :goto_4b

    .line 36
    :cond_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 35
    .end local v6    # "y":I
    :cond_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 44
    .end local v5    # "x":I
    :cond_4b
    :goto_4b
    const/4 v5, 0x0

    .local v5, "y":I
    :goto_4c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_6c

    .line 45
    move v6, v0

    .local v6, "x":I
    :goto_53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_69

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    aget v7, v4, v7

    if-eqz v7, :cond_66

    .line 47
    move v1, v5

    .line 48
    goto :goto_6c

    .line 45
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 44
    .end local v6    # "x":I
    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 53
    .end local v5    # "y":I
    :cond_6c
    :goto_6c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "x":I
    :goto_72
    if-lt v5, v0, :cond_8f

    .line 54
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "y":I
    :goto_7a
    if-lt v6, v1, :cond_8c

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v6

    add-int/2addr v7, v5

    aget v7, v4, v7

    if-eqz v7, :cond_89

    .line 56
    move v2, v5

    .line 57
    goto :goto_8f

    .line 54
    :cond_89
    add-int/lit8 v6, v6, -0x1

    goto :goto_7a

    .line 53
    .end local v6    # "y":I
    :cond_8c
    add-int/lit8 v5, v5, -0x1

    goto :goto_72

    .line 62
    .end local v5    # "x":I
    :cond_8f
    :goto_8f
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "y":I
    :goto_95
    if-lt v5, v1, :cond_b2

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "x":I
    :goto_9d
    if-lt v6, v0, :cond_af

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    aget v7, v4, v7

    if-eqz v7, :cond_ac

    .line 65
    move v3, v5

    .line 66
    goto :goto_b2

    .line 63
    :cond_ac
    add-int/lit8 v6, v6, -0x1

    goto :goto_9d

    .line 62
    .end local v6    # "x":I
    :cond_af
    add-int/lit8 v5, v5, -0x1

    goto :goto_95

    .line 70
    .end local v5    # "y":I
    :cond_b2
    :goto_b2
    sub-int v5, v2, v0

    sub-int v6, v3, v1

    invoke-static {p0, v0, v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method
