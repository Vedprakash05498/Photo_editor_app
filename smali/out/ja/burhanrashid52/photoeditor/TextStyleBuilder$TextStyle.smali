.class public final enum Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;
.super Ljava/lang/Enum;
.source "TextStyleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/burhanrashid52/photoeditor/TextStyleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TextStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

.field public static final enum BACKGROUND:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

.field public static final enum COLOR:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

.field public static final enum FONT_FAMILY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

.field public static final enum GRAVITY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

.field public static final enum SIZE:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

.field public static final enum TEXT_APPEARANCE:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;


# instance fields
.field private property:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 184
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    const-string v3, "TextSize"

    invoke-direct {v0, v1, v2, v3}, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->SIZE:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    .line 185
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    const-string v1, "COLOR"

    const/4 v3, 0x1

    const-string v4, "TextColor"

    invoke-direct {v0, v1, v3, v4}, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->COLOR:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    .line 186
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    const-string v1, "GRAVITY"

    const/4 v4, 0x2

    const-string v5, "Gravity"

    invoke-direct {v0, v1, v4, v5}, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->GRAVITY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    .line 187
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    const-string v1, "FONT_FAMILY"

    const/4 v5, 0x3

    const-string v6, "FontFamily"

    invoke-direct {v0, v1, v5, v6}, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->FONT_FAMILY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    .line 188
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    const-string v1, "BACKGROUND"

    const/4 v6, 0x4

    const-string v7, "Background"

    invoke-direct {v0, v1, v6, v7}, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->BACKGROUND:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    .line 189
    new-instance v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    const-string v1, "TEXT_APPEARANCE"

    const/4 v7, 0x5

    const-string v8, "TextAppearance"

    invoke-direct {v0, v1, v7, v8}, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->TEXT_APPEARANCE:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    .line 183
    const/4 v1, 0x6

    new-array v1, v1, [Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    sget-object v8, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->SIZE:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    aput-object v8, v1, v2

    sget-object v2, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->COLOR:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    aput-object v2, v1, v3

    sget-object v2, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->GRAVITY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    aput-object v2, v1, v4

    sget-object v2, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->FONT_FAMILY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    aput-object v2, v1, v5

    sget-object v2, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->BACKGROUND:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->$VALUES:[Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 192
    iput-object p3, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->property:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 183
    const-class v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    return-object v0
.end method

.method public static values()[Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;
    .registers 1

    .line 183
    sget-object v0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->$VALUES:[Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-virtual {v0}, [Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    return-object v0
.end method


# virtual methods
.method public getProperty()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->property:Ljava/lang/String;

    return-object v0
.end method
