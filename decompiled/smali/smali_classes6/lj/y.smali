.class public final synthetic Llj/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llj/y;->a:Ljava/lang/String;

    iput p2, p0, Llj/y;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Llj/y;->a:Ljava/lang/String;

    iget v1, p0, Llj/y;->b:I

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Llj/l0;->e0(Ljava/lang/String;ILz3/b;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    return-object p1
.end method
