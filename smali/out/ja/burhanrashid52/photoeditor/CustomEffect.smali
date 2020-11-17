.class public Lja/burhanrashid52/photoeditor/CustomEffect;
.super Ljava/lang/Object;
.source "CustomEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/burhanrashid52/photoeditor/CustomEffect$Builder;
    }
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
.method private constructor <init>(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;)V
    .registers 3
    .param p1, "builder"    # Lja/burhanrashid52/photoeditor/CustomEffect$Builder;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/CustomEffect$Builder;->access$000(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect;->mEffectName:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lja/burhanrashid52/photoeditor/CustomEffect$Builder;->access$100(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect;->parametersMap:Ljava/util/Map;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;Lja/burhanrashid52/photoeditor/CustomEffect$1;)V
    .registers 3
    .param p1, "x0"    # Lja/burhanrashid52/photoeditor/CustomEffect$Builder;
    .param p2, "x1"    # Lja/burhanrashid52/photoeditor/CustomEffect$1;

    .line 16
    invoke-direct {p0, p1}, Lja/burhanrashid52/photoeditor/CustomEffect;-><init>(Lja/burhanrashid52/photoeditor/CustomEffect$Builder;)V

    return-void
.end method


# virtual methods
.method public getEffectName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect;->mEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/CustomEffect;->parametersMap:Ljava/util/Map;

    return-object v0
.end method
