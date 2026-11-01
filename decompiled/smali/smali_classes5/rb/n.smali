.class public final synthetic Lrb/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lrb/o$a;


# direct methods
.method public synthetic constructor <init>(Lrb/o$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/n;->a:Lrb/o$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lrb/n;->a:Lrb/o$a;

    invoke-static {v0}, Lrb/o$a;->a(Lrb/o$a;)V

    return-void
.end method
