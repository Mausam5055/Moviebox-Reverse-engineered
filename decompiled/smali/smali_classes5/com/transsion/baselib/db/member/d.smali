.class public final synthetic Lcom/transsion/baselib/db/member/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/baselib/db/member/d;->a:Z

    iput-object p2, p0, Lcom/transsion/baselib/db/member/d;->b:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/baselib/db/member/d;->c:I

    iput p4, p0, Lcom/transsion/baselib/db/member/d;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/baselib/db/member/d;->a:Z

    iget-object v1, p0, Lcom/transsion/baselib/db/member/d;->b:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/baselib/db/member/d;->c:I

    iget v3, p0, Lcom/transsion/baselib/db/member/d;->d:I

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/baselib/db/member/g;->l(ZLjava/lang/String;IILz3/b;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
