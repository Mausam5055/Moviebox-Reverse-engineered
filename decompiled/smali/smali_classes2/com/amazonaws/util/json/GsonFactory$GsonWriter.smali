.class final Lcom/amazonaws/util/json/GsonFactory$GsonWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/util/json/AwsJsonWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/json/GsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GsonWriter"
.end annotation


# instance fields
.field private final a:Lcom/google/gson/stream/JsonWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public b()Lcom/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonWriter;->close()V

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/util/json/GsonFactory$GsonWriter;->a:Lcom/google/gson/stream/JsonWriter;

    invoke-virtual {v0, p1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    return-object p0
.end method
