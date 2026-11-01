.class public final synthetic Lcom/transsion/search/fragment/group/f0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/search/fragment/group/f0;->a:Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search/fragment/group/f0;->a:Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;

    check-cast p1, Lcom/transsion/search/bean/SearchWorkEntity;

    invoke-static {v0, p1}, Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;->i0(Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;Lcom/transsion/search/bean/SearchWorkEntity;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
