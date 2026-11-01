.class public final synthetic Lcom/transsion/baselib/db/video/t;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/u;

.field public final synthetic b:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/u;Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/t;->a:Lcom/transsion/baselib/db/video/u;

    iput-object p2, p0, Lcom/transsion/baselib/db/video/t;->b:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/t;->a:Lcom/transsion/baselib/db/video/u;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/t;->b:Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/db/video/u;->f(Lcom/transsion/baselib/db/video/u;Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
