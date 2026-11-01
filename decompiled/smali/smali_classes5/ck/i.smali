.class public final synthetic Lck/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lck/j;


# direct methods
.method public synthetic constructor <init>(Lck/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/i;->a:Lck/j;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lck/i;->a:Lck/j;

    invoke-static {v0}, Lck/j;->a(Lck/j;)Lhj/b;

    move-result-object v0

    return-object v0
.end method
