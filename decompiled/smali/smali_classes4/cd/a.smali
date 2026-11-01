.class public final synthetic Lcd/a;
.super Ljava/lang/Object;

# interfaces
.implements Lmb/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lmb/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lmb/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcd/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcd/a;->b:Lmb/c;

    return-void
.end method


# virtual methods
.method public final a(Lmb/e;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcd/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcd/a;->b:Lmb/c;

    invoke-static {v0, v1, p1}, Lcd/b;->b(Ljava/lang/String;Lmb/c;Lmb/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
