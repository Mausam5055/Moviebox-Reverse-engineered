.class public final synthetic Lmb/b;
.super Ljava/lang/Object;

# interfaces
.implements Lmb/h;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lmb/e;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmb/b;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lmb/c;->a(Ljava/lang/Object;Lmb/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
