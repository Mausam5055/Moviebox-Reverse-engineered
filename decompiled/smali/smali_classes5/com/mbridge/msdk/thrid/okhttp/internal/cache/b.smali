.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/mbridge/msdk/thrid/okhttp/w;

.field public final b:Lcom/mbridge/msdk/thrid/okhttp/y;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/w;Lcom/mbridge/msdk/thrid/okhttp/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b;->a:Lcom/mbridge/msdk/thrid/okhttp/w;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/cache/b;->b:Lcom/mbridge/msdk/thrid/okhttp/y;

    return-void
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okhttp/y;Lcom/mbridge/msdk/thrid/okhttp/w;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->k()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x133

    if-eq v0, v1, :cond_0

    const/16 v1, 0x134

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-eq v0, v1, :cond_2

    const/16 v1, 0x195

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->h()Lcom/mbridge/msdk/thrid/okhttp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/c;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->h()Lcom/mbridge/msdk/thrid/okhttp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->h()Lcom/mbridge/msdk/thrid/okhttp/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    :goto_1
    :pswitch_1
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/y;->h()Lcom/mbridge/msdk/thrid/okhttp/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/c;->i()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/w;->b()Lcom/mbridge/msdk/thrid/okhttp/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/c;->i()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
