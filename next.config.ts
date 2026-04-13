import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  output: "standalone",
  experimental: {
    serverActions: {
      bodySizeLimit: "10mb", // pode ser 5mb, 10mb, 50mb...
    },
  },
};

export default nextConfig;
