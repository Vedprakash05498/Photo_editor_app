.class public Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FilterViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFilterListener:Lcom/yourdomain/photoeditor/filters/FilterListener;

.field private mPairList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lja/burhanrashid52/photoeditor/PhotoFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yourdomain/photoeditor/filters/FilterListener;)V
    .registers 3
    .param p1, "filterListener"    # Lcom/yourdomain/photoeditor/filters/FilterListener;

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mFilterListener:Lcom/yourdomain/photoeditor/filters/FilterListener;

    .line 37
    invoke-direct {p0}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->setupFilters()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    .line 30
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;)Lcom/yourdomain/photoeditor/filters/FilterListener;
    .registers 2
    .param p0, "x0"    # Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    .line 30
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mFilterListener:Lcom/yourdomain/photoeditor/filters/FilterListener;

    return-object v0
.end method

.method private getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strName"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 79
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 81
    .local v1, "istr":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 82
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_f

    return-object v2

    .line 83
    :catch_f
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const/4 v3, 0x0

    return-object v3
.end method

.method private setupFilters()V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->NONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/original.jpg"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->AUTO_FIX:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/auto_fix.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->BRIGHTNESS:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/brightness.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->CONTRAST:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/contrast.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->DOCUMENTARY:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/documentary.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->DUE_TONE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/dual_tone.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->FILL_LIGHT:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/fill_light.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->FISH_EYE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/fish_eye.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->GRAIN:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/grain.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->GRAY_SCALE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/gray_scale.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->LOMISH:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/lomish.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->NEGATIVE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/negative.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->POSTERIZE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/posterize.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->SATURATE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/saturate.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->SEPIA:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/sepia.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->SHARPEN:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/sharpen.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->TEMPERATURE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/temprature.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->TINT:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/tint.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->VIGNETTE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/vignette.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->CROSS_PROCESS:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/cross_process.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->BLACK_WHITE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/b_n_w.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->FLIP_HORIZONTAL:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/flip_horizental.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->FLIP_VERTICAL:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/flip_vertical.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lja/burhanrashid52/photoeditor/PhotoFilter;->ROTATE:Lja/burhanrashid52/photoeditor/PhotoFilter;

    const-string v3, "filters/rotate.png"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 30
    check-cast p1, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->onBindViewHolder(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;I)V
    .registers 9
    .param p1, "holder"    # Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 49
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->mPairList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 50
    .local v0, "filterPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lja/burhanrashid52/photoeditor/PhotoFilter;>;"
    iget-object v1, p1, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->getBitmapFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 51
    .local v1, "fromAsset":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->mImageFilterView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    iget-object v2, p1, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->mTxtFilterName:Landroid/widget/TextView;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-virtual {v3}, Lja/burhanrashid52/photoeditor/PhotoFilter;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;Landroid/view/View;)V

    return-object v1
.end method
