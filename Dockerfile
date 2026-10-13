FROM registry.cn-beijing.aliyuncs.com/ack-containers/centos:sleep
 
ARG VERSION=dev
 
RUN echo "=== build-arg VERSION: [${VERSION}] ===" && \
    echo "${VERSION}" > /tmp/version.txt && \
    (ls -ld .git 2>/dev/null && echo "=== .git EXISTS in build context ===" \
     || echo "=== .git NOT in build context ===")
 
LABEL version="${VERSION}"
 
ADD *.txt /tmp/
 
CMD ["sleep","99d"]
