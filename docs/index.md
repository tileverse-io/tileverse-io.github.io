# Tileverse.io

Welcome to **Tileverse.io** - a collection of open source libraries for efficient access to cloud-optimized geospatial data.

## Our Libraries

### 🔗 Tileverse Range Reader

A high-performance Java library for reading byte ranges from various data sources including local files, HTTP servers, and cloud storage services (S3, Azure Blob Storage, Google Cloud Storage).

Designed for efficient access to large files without loading them entirely into memory - perfect for PMTiles, GeoTIFF, and other tiled data formats. Supports multi-cloud environments with comprehensive authentication options and multi-level caching for optimal performance in server applications.

[📖 Documentation](https://tileverse.io/tileverse-rangereader/) | [💾 GitHub](https://github.com/tileverse-io/tileverse-rangereader) | [📦 Maven Central](https://central.sonatype.com/search?q=io.tileverse.rangereader)

**Maven Dependency:**
```xml
<dependency>
    <groupId>io.tileverse.rangereader</groupId>
    <artifactId>tileverse-rangereader-core</artifactId>
    <version>1.0.0</version>
</dependency>
```

**Quick Example:**
```java
// Read from local file
try (RangeReader reader = FileRangeReader.of(Paths.get("data.pmtiles"))) {
    ByteBuffer data = reader.readRange(1024, 512);
}

// Read from S3 with caching
RangeReader reader = S3RangeReader.builder()
    .uri(URI.create("s3://bucket/data.pmtiles"))
    .withCaching()
    .build();

// Read from Azure Blob Storage
RangeReader reader = AzureBlobRangeReader.builder()
    .connectionString("DefaultEndpointsProtocol=https;...")
    .containerName("data")
    .blobPath("world.pmtiles")
    .build();
```

### 🗺️ Tileverse PMTiles

A Java library for reading and writing PMTiles archives - a cloud-optimized format for serving map tiles efficiently from object storage.

Built on top of Tileverse Range Reader, this library provides full PMTiles 3.0 compatibility with streaming access to large tile archives. Whether you're serving tiles from S3, Azure, or Google Cloud Storage, it handles the complexity of efficient tile retrieval without loading entire archives into memory.

[📖 Documentation](https://tileverse.io/tileverse-pmtiles/) | [💾 GitHub](https://github.com/tileverse-io/tileverse-pmtiles) | [📦 Maven Central](https://central.sonatype.com/search?q=io.tileverse.pmtiles)

**Maven Dependency:**
```xml
<dependency>
    <groupId>io.tileverse.pmtiles</groupId>
    <artifactId>tileverse-pmtiles-reader</artifactId>
    <version>1.0.0</version>
</dependency>
```

**Quick Example:**
```java
// Open PMTiles archive from S3
RangeReader rangeReader = S3RangeReader.builder()
    .uri(URI.create("s3://bucket/world.pmtiles"))
    .build();

try (PMTilesReader reader = PMTilesReader.of(rangeReader)) {
    // Read tile data efficiently
    byte[] tileData = reader.getTile(z, x, y);
}
```

## About Tileverse

Tileverse libraries are designed to solve real-world challenges in geospatial data access:

- **Cloud-first**: Built for modern cloud storage architectures
- **Performance**: Optimized for high-throughput server environments  
- **Reliability**: Production-ready with comprehensive error handling
- **Developer Experience**: Clean APIs with extensive documentation

## Getting Started

1. **Choose your library**: Range Reader for general byte-range access, PMTiles for map tile archives
2. **Add Maven dependency**: All libraries are available on Maven Central
3. **Read the docs**: Comprehensive guides with examples and best practices
4. **Join the community**: Contribute on GitHub or ask questions in discussions

## License

All Tileverse libraries are released under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0).

---

*Built with ❤️ by [Multiversio LLC](https://multiversio.com) and [Camptocamp](https://camptocamp.com) for the geospatial community.*