.class public final synthetic Lcom/transsion/baselib/db/video/v0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/d1;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/d1;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/v0;->a:Lcom/transsion/baselib/db/video/d1;

    iput p2, p0, Lcom/transsion/baselib/db/video/v0;->b:I

    iput p3, p0, Lcom/transsion/baselib/db/video/v0;->c:I

    iput p4, p0, Lcom/transsion/baselib/db/video/v0;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/db/video/v0;->a:Lcom/transsion/baselib/db/video/d1;

    iget v1, p0, Lcom/transsion/baselib/db/video/v0;->b:I

    iget v2, p0, Lcom/transsion/baselib/db/video/v0;->c:I

    iget v3, p0, Lcom/transsion/baselib/db/video/v0;->d:I

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/baselib/db/video/d1;->x(Lcom/transsion/baselib/db/video/d1;IIILz3/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
