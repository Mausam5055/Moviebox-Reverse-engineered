.class public final synthetic Lmn/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmn/c;->a:I

    iput-object p2, p0, Lmn/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lmn/c;->a:I

    iget-object v1, p0, Lmn/c;->b:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lmn/i;->n(ILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
