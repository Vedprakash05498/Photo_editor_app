.class Lja/burhanrashid52/photoeditor/TextureRenderer;
.super Ljava/lang/Object;
.source "TextureRenderer.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

.field private static final POS_VERTICES:[F

.field private static final TEX_VERTICES:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"


# instance fields
.field private mPosCoordHandle:I

.field private mPosVertices:Ljava/nio/FloatBuffer;

.field private mProgram:I

.field private mTexCoordHandle:I

.field private mTexHeight:I

.field private mTexSamplerHandle:I

.field private mTexVertices:Ljava/nio/FloatBuffer;

.field private mTexWidth:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_12

    sput-object v1, Lja/burhanrashid52/photoeditor/TextureRenderer;->TEX_VERTICES:[F

    .line 62
    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lja/burhanrashid52/photoeditor/TextureRenderer;->POS_VERTICES:[F

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_26
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeOutputVertices()V
    .registers 11

    .line 143
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mPosVertices:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_4e

    .line 144
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexWidth:I

    int-to-float v0, v0

    iget v1, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 145
    .local v0, "imgAspectRatio":F
    iget v1, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mViewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 146
    .local v1, "viewAspectRatio":F
    div-float v2, v1, v0

    .line 148
    .local v2, "relativeAspectRatio":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_23

    .line 149
    const/high16 v4, -0x40800000    # -1.0f

    div-float/2addr v4, v2

    .line 150
    .local v4, "x0":F
    const/high16 v5, -0x40800000    # -1.0f

    .line 151
    .local v5, "y0":F
    div-float/2addr v3, v2

    .line 152
    .local v3, "x1":F
    const/high16 v6, 0x3f800000    # 1.0f

    .local v6, "y1":F
    goto :goto_29

    .line 154
    .end local v3    # "x1":F
    .end local v4    # "x0":F
    .end local v5    # "y0":F
    .end local v6    # "y1":F
    :cond_23
    const/high16 v4, -0x40800000    # -1.0f

    .line 155
    .restart local v4    # "x0":F
    neg-float v5, v2

    .line 156
    .restart local v5    # "y0":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 157
    .restart local v3    # "x1":F
    move v6, v2

    .line 159
    .restart local v6    # "y1":F
    :goto_29
    const/16 v7, 0x8

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v9, 0x1

    aput v5, v7, v9

    const/4 v9, 0x2

    aput v3, v7, v9

    const/4 v9, 0x3

    aput v5, v7, v9

    const/4 v9, 0x4

    aput v4, v7, v9

    const/4 v9, 0x5

    aput v6, v7, v9

    const/4 v9, 0x6

    aput v3, v7, v9

    const/4 v9, 0x7

    aput v6, v7, v9

    .line 160
    .local v7, "coords":[F
    iget-object v9, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mPosVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    .end local v0    # "imgAspectRatio":F
    .end local v1    # "viewAspectRatio":F
    .end local v2    # "relativeAspectRatio":F
    .end local v3    # "x1":F
    .end local v4    # "x0":F
    .end local v5    # "y0":F
    .end local v6    # "y1":F
    .end local v7    # "coords":[F
    :cond_4e
    return-void
.end method


# virtual methods
.method init()V
    .registers 4

    .line 70
    const-string v0, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

    invoke-static {v0, v1}, Lja/burhanrashid52/photoeditor/GLToolbox;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mProgram:I

    .line 73
    const-string v1, "tex_sampler"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexSamplerHandle:I

    .line 75
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mProgram:I

    const-string v1, "a_texcoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexCoordHandle:I

    .line 76
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mProgram:I

    const-string v1, "a_position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mPosCoordHandle:I

    .line 79
    sget-object v0, Lja/burhanrashid52/photoeditor/TextureRenderer;->TEX_VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 81
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexVertices:Ljava/nio/FloatBuffer;

    .line 82
    sget-object v1, Lja/burhanrashid52/photoeditor/TextureRenderer;->TEX_VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    sget-object v0, Lja/burhanrashid52/photoeditor/TextureRenderer;->POS_VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mPosVertices:Ljava/nio/FloatBuffer;

    .line 86
    sget-object v2, Lja/burhanrashid52/photoeditor/TextureRenderer;->POS_VERTICES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-void
.end method

.method renderTexture(I)V
    .registers 10
    .param p1, "texId"    # I

    .line 107
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 110
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 111
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mViewWidth:I

    iget v2, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mViewHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 115
    const-string v0, "glViewport"

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 118
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 121
    iget v2, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexCoordHandle:I

    iget-object v7, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 123
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 124
    iget v2, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mPosCoordHandle:I

    iget-object v7, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mPosVertices:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 126
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mPosCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 127
    const-string v0, "vertex attribute setup"

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 130
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 131
    const-string v0, "glActiveTexture"

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 132
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 133
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lja/burhanrashid52/photoeditor/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 134
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexSamplerHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 137
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 138
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 139
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 140
    return-void
.end method

.method public tearDown()V
    .registers 2

    .line 90
    iget v0, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 91
    return-void
.end method

.method updateTextureSize(II)V
    .registers 3
    .param p1, "texWidth"    # I
    .param p2, "texHeight"    # I

    .line 94
    iput p1, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexWidth:I

    .line 95
    iput p2, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mTexHeight:I

    .line 96
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/TextureRenderer;->computeOutputVertices()V

    .line 97
    return-void
.end method

.method updateViewSize(II)V
    .registers 3
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .line 100
    iput p1, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mViewWidth:I

    .line 101
    iput p2, p0, Lja/burhanrashid52/photoeditor/TextureRenderer;->mViewHeight:I

    .line 102
    invoke-direct {p0}, Lja/burhanrashid52/photoeditor/TextureRenderer;->computeOutputVertices()V

    .line 103
    return-void
.end method
