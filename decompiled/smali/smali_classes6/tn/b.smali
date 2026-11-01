.class public final synthetic Ltn/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ltn/e;


# direct methods
.method public synthetic constructor <init>(Ltn/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/b;->a:Ltn/e;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltn/b;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->b(Ltn/e;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
