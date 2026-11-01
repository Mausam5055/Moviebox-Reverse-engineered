.class public final synthetic Lorg/chromium/net/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/chromium/net/e$a;


# instance fields
.field public final synthetic a:Lorg/chromium/net/QuicOptions;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/net/QuicOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/d;->a:Lorg/chromium/net/QuicOptions;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/net/d;->a:Lorg/chromium/net/QuicOptions;

    invoke-static {v0, p1}, Lorg/chromium/net/e;->b(Lorg/chromium/net/QuicOptions;Lorg/json/JSONObject;)V

    return-void
.end method
