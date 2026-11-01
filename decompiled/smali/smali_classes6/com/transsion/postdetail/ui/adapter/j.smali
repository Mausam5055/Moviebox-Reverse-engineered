.class public final synthetic Lcom/transsion/postdetail/ui/adapter/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/moviedetailapi/bean/Image;

.field public final synthetic d:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Image;Lcom/google/android/material/imageview/ShapeableImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/ui/adapter/j;->a:Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;

    iput-object p2, p0, Lcom/transsion/postdetail/ui/adapter/j;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/transsion/postdetail/ui/adapter/j;->c:Lcom/transsion/moviedetailapi/bean/Image;

    iput-object p4, p0, Lcom/transsion/postdetail/ui/adapter/j;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/ui/adapter/j;->a:Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;

    iget-object v1, p0, Lcom/transsion/postdetail/ui/adapter/j;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/postdetail/ui/adapter/j;->c:Lcom/transsion/moviedetailapi/bean/Image;

    iget-object v3, p0, Lcom/transsion/postdetail/ui/adapter/j;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;->C1(Lcom/transsion/postdetail/ui/adapter/RoomPostContentImageAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/bean/Image;Lcom/google/android/material/imageview/ShapeableImageView;)V

    return-void
.end method
