.class public final synthetic Lz8/e;
.super Ljava/lang/Object;

# interfaces
.implements Lb9/a$a;


# instance fields
.field public final synthetic a:La9/c;


# direct methods
.method public synthetic constructor <init>(La9/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/e;->a:La9/c;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lz8/e;->a:La9/c;

    invoke-interface {v0}, La9/c;->h()Lv8/a;

    move-result-object v0

    return-object v0
.end method
