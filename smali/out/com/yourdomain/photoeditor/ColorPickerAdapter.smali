.class public Lcom/yourdomain/photoeditor/ColorPickerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;,
        Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPickerColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private onColorPickerClickListener:Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->getDefaultColors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 39
    iput-object p1, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->context:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p2, "colorPickerColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->context:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->colorPickerColors:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/ColorPickerAdapter;)Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    .line 24
    iget-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->onColorPickerClickListener:Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yourdomain/photoeditor/ColorPickerAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/ColorPickerAdapter;

    .line 24
    iget-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->colorPickerColors:Ljava/util/List;

    return-object v0
.end method

.method private buildColorPickerView(Landroid/view/View;I)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "colorCode"    # I

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 63
    .local v1, "biggerCircle":Landroid/graphics/drawable/ShapeDrawable;
    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 64
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 65
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 66
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 69
    .local v2, "smallerCircle":Landroid/graphics/drawable/ShapeDrawable;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 70
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 71
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v0, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 74
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    move-object v0, v3

    .line 76
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 78
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method public static getDefaultColors(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "colorPickerColors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f060022

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    const v1, 0x7f060029

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const v1, 0x7f060062

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const v1, 0x7f0600b7

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const v1, 0x7f0600c1

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const v1, 0x7f060021

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const v1, 0x7f0600c2

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const v1, 0x7f0600c9

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const v1, 0x7f0600d5

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const v1, 0x7f0600d6

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const v1, 0x7f0600d7

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const v1, 0x7f0600d8

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->colorPickerColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 24
    check-cast p1, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->onBindViewHolder(Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 51
    iget-object v0, p1, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;->colorPickerView:Landroid/view/View;

    iget-object v1, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->colorPickerColors:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 52
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 45
    iget-object v0, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/yourdomain/photoeditor/ColorPickerAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/ColorPickerAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public setOnColorPickerClickListener(Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;)V
    .registers 2
    .param p1, "onColorPickerClickListener"    # Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;

    .line 82
    iput-object p1, p0, Lcom/yourdomain/photoeditor/ColorPickerAdapter;->onColorPickerClickListener:Lcom/yourdomain/photoeditor/ColorPickerAdapter$OnColorPickerClickListener;

    .line 83
    return-void
.end method
