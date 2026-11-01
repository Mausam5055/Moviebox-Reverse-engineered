.class public final synthetic Lz8/r;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:Lz8/s;


# direct methods
.method public synthetic constructor <init>(Lz8/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/r;->a:Lz8/s;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz8/r;->a:Lz8/s;

    invoke-static {v0}, Lz8/s;->a(Lz8/s;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
