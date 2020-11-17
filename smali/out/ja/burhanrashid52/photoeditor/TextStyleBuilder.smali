.class public Lja/burhanrashid52/photoeditor/TextStyleBuilder;
.super Ljava/lang/Object;
.source "TextStyleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;
    }
.end annotation


# instance fields
.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected applyBackgroundColor(Landroid/widget/TextView;I)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "color"    # I

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 162
    return-void
.end method

.method protected applyBackgroundDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 168
    :cond_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_d
    return-void
.end method

.method protected applyFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 154
    return-void
.end method

.method protected applyGravity(Landroid/widget/TextView;I)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "gravity"    # I

    .line 157
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 158
    return-void
.end method

.method applyStyle(Landroid/widget/TextView;)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;Ljava/lang/Object;>;"
    sget-object v2, Lja/burhanrashid52/photoeditor/TextStyleBuilder$1;->$SwitchMap$ja$burhanrashid52$photoeditor$TextStyleBuilder$TextStyle:[I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-virtual {v3}, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a0

    goto/16 :goto_9c

    .line 134
    :pswitch_29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_9c

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 136
    .local v2, "styleAppearance":I
    invoke-virtual {p0, p1, v2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyTextAppearance(Landroid/widget/TextView;I)V

    goto :goto_9c

    .line 122
    .end local v2    # "styleAppearance":I
    :pswitch_3f
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_51

    .line 123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 124
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1, v2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyBackgroundDrawable(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    .end local v2    # "bg":Landroid/graphics/drawable/Drawable;
    goto :goto_67

    .line 126
    :cond_51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_67

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    .local v2, "color":I
    invoke-virtual {p0, p1, v2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyBackgroundColor(Landroid/widget/TextView;I)V

    .line 129
    .end local v2    # "color":I
    goto :goto_9c

    .line 126
    :cond_67
    :goto_67
    goto :goto_9c

    .line 116
    :pswitch_68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 117
    .local v2, "gravity":I
    invoke-virtual {p0, p1, v2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyGravity(Landroid/widget/TextView;I)V

    .line 119
    .end local v2    # "gravity":I
    goto :goto_9c

    .line 110
    :pswitch_76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 111
    .local v2, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, p1, v2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 113
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    goto :goto_9c

    .line 104
    :pswitch_80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 105
    .local v2, "color":I
    invoke-virtual {p0, p1, v2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyTextColor(Landroid/widget/TextView;I)V

    .line 107
    .end local v2    # "color":I
    goto :goto_9c

    .line 98
    :pswitch_8e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 99
    .local v2, "size":F
    invoke-virtual {p0, p1, v2}, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->applyTextSize(Landroid/widget/TextView;F)V

    .line 101
    .end local v2    # "size":F
    nop

    .line 141
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;Ljava/lang/Object;>;"
    :cond_9c
    :goto_9c
    goto/16 :goto_a

    .line 142
    :cond_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_80
        :pswitch_76
        :pswitch_68
        :pswitch_3f
        :pswitch_29
    .end packed-switch
.end method

.method protected applyTextAppearance(Landroid/widget/TextView;I)V
    .registers 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "styleAppearance"    # I

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 174
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_11

    .line 176
    :cond_a
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 178
    :goto_11
    return-void
.end method

.method protected applyTextColor(Landroid/widget/TextView;I)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "color"    # I

    .line 149
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    return-void
.end method

.method protected applyTextSize(Landroid/widget/TextView;F)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "size"    # F

    .line 145
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 146
    return-void
.end method

.method protected getValues()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    return-object v0
.end method

.method public withBackgroundColor(I)V
    .registers 5
    .param p1, "background"    # I

    .line 68
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    sget-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->BACKGROUND:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public withBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "bgDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    sget-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->BACKGROUND:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public withGravity(I)V
    .registers 5
    .param p1, "gravity"    # I

    .line 59
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    sget-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->GRAVITY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public withTextAppearance(I)V
    .registers 5
    .param p1, "textAppearance"    # I

    .line 86
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    sget-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->TEXT_APPEARANCE:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public withTextColor(I)V
    .registers 5
    .param p1, "color"    # I

    .line 41
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    sget-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->COLOR:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public withTextFont(Landroid/graphics/Typeface;)V
    .registers 4
    .param p1, "textTypeface"    # Landroid/graphics/Typeface;

    .line 50
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    sget-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->FONT_FAMILY:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public withTextSize(F)V
    .registers 5
    .param p1, "size"    # F

    .line 32
    iget-object v0, p0, Lja/burhanrashid52/photoeditor/TextStyleBuilder;->values:Ljava/util/Map;

    sget-object v1, Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;->SIZE:Lja/burhanrashid52/photoeditor/TextStyleBuilder$TextStyle;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
