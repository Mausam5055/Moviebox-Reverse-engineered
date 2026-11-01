.class public final synthetic Lcom/transsion/postdetail/ui/adapter/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/k;->a:Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/adapter/k;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/k;->a:Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/k;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-static {v0, v1, p1}, Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;->B1(Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method
