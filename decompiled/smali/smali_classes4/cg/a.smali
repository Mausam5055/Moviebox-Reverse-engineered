.class public final synthetic Lcg/a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/EventListener$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 0

    invoke-static {p1}, Lcg/b;->b(Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object p1

    return-object p1
.end method
