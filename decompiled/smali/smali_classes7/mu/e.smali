.class public final synthetic Lmu/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmu/e;->a:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmu/e;->a:I

    check-cast p1, Lz3/b;

    invoke-static {v0, p1}, Lmu/i;->j(ILz3/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
