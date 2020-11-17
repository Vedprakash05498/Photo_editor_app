.class Lja/burhanrashid52/photoeditor/GLToolbox;
.super Ljava/lang/Object;
.source "GLToolbox.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGlError(Ljava/lang/String;)V
    .registers 5
    .param p0, "op"    # Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 70
    .local v0, "error":I
    if-nez v0, :cond_7

    .line 73
    return-void

    .line 71
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .line 40
    const v0, 0x8b31

    invoke-static {v0, p0}, Lja/burhanrashid52/photoeditor/GLToolbox;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "vertexShader":I
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 42
    return v1

    .line 44
    :cond_b
    const v2, 0x8b30

    invoke-static {v2, p1}, Lja/burhanrashid52/photoeditor/GLToolbox;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 45
    .local v2, "pixelShader":I
    if-nez v2, :cond_15

    .line 46
    return v1

    .line 49
    :cond_15
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 50
    .local v3, "program":I
    if-eqz v3, :cond_58

    .line 51
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 52
    const-string v4, "glAttachShader"

    invoke-static {v4}, Lja/burhanrashid52/photoeditor/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 53
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 54
    invoke-static {v4}, Lja/burhanrashid52/photoeditor/GLToolbox;->checkGlError(Ljava/lang/String;)V

    .line 55
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 56
    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 57
    .local v5, "linkStatus":[I
    const v6, 0x8b82

    invoke-static {v3, v6, v5, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 59
    aget v1, v5, v1

    if-ne v1, v4, :cond_3a

    goto :goto_58

    .line 60
    :cond_3a
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "info":Ljava/lang/String;
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 62
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not link program: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    .end local v1    # "info":Ljava/lang/String;
    .end local v5    # "linkStatus":[I
    :cond_58
    :goto_58
    return v3
.end method

.method static initTexParams()V
    .registers 3

    .line 76
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 78
    const/16 v1, 0x2801

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 80
    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 82
    const/16 v1, 0x2803

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 84
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .registers 8
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .line 24
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 25
    .local v0, "shader":I
    if-eqz v0, :cond_41

    .line 26
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 27
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 28
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 29
    .local v1, "compiled":[I
    const v2, 0x8b81

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 30
    aget v2, v1, v3

    if-eqz v2, :cond_1b

    goto :goto_41

    .line 31
    :cond_1b
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "info":Ljava/lang/String;
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 33
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not compile shader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    .end local v1    # "compiled":[I
    .end local v2    # "info":Ljava/lang/String;
    :cond_41
    :goto_41
    return v0
.end method
