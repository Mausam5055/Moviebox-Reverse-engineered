.class public final synthetic Lcom/transsion/baselib/db/member/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/db/member/g;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/member/b;->a:Lcom/transsion/baselib/db/member/g;

    iput-object p2, p0, Lcom/transsion/baselib/db/member/b;->b:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/baselib/db/member/b;->c:I

    iput p4, p0, Lcom/transsion/baselib/db/member/b;->d:I

    iput-boolean p5, p0, Lcom/transsion/baselib/db/member/b;->e:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/baselib/db/member/b;->a:Lcom/transsion/baselib/db/member/g;

    iget-object v1, p0, Lcom/transsion/baselib/db/member/b;->b:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/baselib/db/member/b;->c:I

    iget v3, p0, Lcom/transsion/baselib/db/member/b;->d:I

    iget-boolean v4, p0, Lcom/transsion/baselib/db/member/b;->e:Z

    move-object v5, p1

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v5}, Lcom/transsion/baselib/db/member/g;->k(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
