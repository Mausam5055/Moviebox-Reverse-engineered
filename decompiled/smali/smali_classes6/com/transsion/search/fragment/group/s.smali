.class public final synthetic Lcom/transsion/search/fragment/group/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/group/s;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/search/fragment/group/s;->b:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/search/fragment/group/s;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/search/fragment/group/s;->b:Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;

    invoke-static {v0, v1}, Lcom/transsion/search/fragment/group/SearchUploadGroupFragment$f;->b(Ljava/util/List;Lcom/transsion/search/fragment/group/SearchUploadGroupFragment;)V

    return-void
.end method
