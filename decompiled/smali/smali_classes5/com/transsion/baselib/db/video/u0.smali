.class public final synthetic Lcom/transsion/baselib/db/video/u0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/video/d1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/u0;->a:Lcom/transsion/baselib/db/video/d1;

    iput-object p2, p0, Lcom/transsion/baselib/db/video/u0;->b:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/baselib/db/video/u0;->c:I

    iput p4, p0, Lcom/transsion/baselib/db/video/u0;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/baselib/db/video/u0;->a:Lcom/transsion/baselib/db/video/d1;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/u0;->b:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/baselib/db/video/u0;->c:I

    iget v3, p0, Lcom/transsion/baselib/db/video/u0;->d:I

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/baselib/db/video/d1;->q(Lcom/transsion/baselib/db/video/d1;Ljava/lang/String;IILz3/b;)Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    move-result-object p1

    return-object p1
.end method
