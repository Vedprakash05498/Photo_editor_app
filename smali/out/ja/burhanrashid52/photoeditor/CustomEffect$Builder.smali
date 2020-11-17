.class public Lja/burhanrashid52/photoeditor/CustomEffect$Builder;
.super Ljava/lang/Object;
.source "CustomEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/CustomEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mEffectName:Ljava/lang/String;

.field private parametersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "effectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect$Builder;->parametersMap:Ljava/util/Map;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 58
    iput-object p1, p0, Lja/burhanrashid52/photoeditor/CustomEffect$Builder;->mEffectName:Ljava/lang/String;

    .line 59
    return-void

    .line 56
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Effect name cannot be empty.Please provide effect name from EffectFactory"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/CustomEffect$Builder;

    .line 43
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect$Builder;->mEffectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lja/burhanrashid52/photoeditor/CustomEffect$Builder;

    .line 43
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect$Builder;->parametersMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public build()Lja/burhanrashid52/photoeditor/CustomEffect;
    .registers 3

    .line 77
    new-instance v0, Lja/burhanrashid52/photoeditor/CustomEffect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lja/burhanrashid52/photoeditor/CustomEffect;-><init>(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;Lja/burhanrashid52/photoeditor/CustomEffect$1;)V

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lja/burhanrashid52/photoeditor/CustomEffect$Builder;
    .registers 4
    .param p1, "paramKey"    # Ljava/lang/String;
    .param p2, "paramValue"    # Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect$Builder;->parametersMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object p0
.end method
