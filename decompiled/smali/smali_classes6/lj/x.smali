.class public final synthetic Llj/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llj/x;->a:I

    iput p2, p0, Llj/x;->b:I

    iput-object p3, p0, Llj/x;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Llj/x;->a:I

    iget v1, p0, Llj/x;->b:I

    iget-object v2, p0, Llj/x;->c:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, p1}, Llj/l0;->j0(IILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
