.class Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "FilterViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;-><init>(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

.field final synthetic val$this$0:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;


# direct methods
.method constructor <init>(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;)V
    .registers 3
    .param p1, "this$1"    # Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    .line 68
    iput-object p1, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    iput-object p2, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;->val$this$0:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    iget-object v0, v0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    invoke-static {v0}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->access$100(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;)Lcom/yourdomain/photoeditor/filters/FilterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->this$0:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;

    invoke-static {v1}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;->access$000(Lcom/yourdomain/photoeditor/filters/FilterViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder$1;->this$1:Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/yourdomain/photoeditor/filters/FilterViewAdapter$ViewHolder;->getLayoutPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lja/burhanrashid52/photoeditor/PhotoFilter;

    invoke-interface {v0, v1}, Lcom/yourdomain/photoeditor/filters/FilterListener;->onFilterSelected(Lja/burhanrashid52/photoeditor/PhotoFilter;)V

    .line 72
    return-void
.end method
