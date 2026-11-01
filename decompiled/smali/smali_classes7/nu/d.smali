.class public final synthetic Lnu/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnu/h$f;


# direct methods
.method public synthetic constructor <init>(Lnu/h$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnu/d;->a:Lnu/h$f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnu/d;->a:Lnu/h$f;

    invoke-static {v0}, Lnu/h;->f(Lnu/h$f;)V

    return-void
.end method
