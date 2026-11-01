.class public abstract Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;
.super Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "NormalViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/base/BaseAdapter<",
        "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
        "TT;>.NormalViewHolder;>.BaseViewHolder;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter$NormalViewHolder;->this$0:Lcom/cloud/tmc/miniapp/ui/adapter/NormalBaseAdapter;

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/miniapp/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/cloud/tmc/miniapp/base/BaseAdapter;I)V

    return-void
.end method
