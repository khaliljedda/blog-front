

############
### prod ###
############

# base image
FROM nginx:alpine

# copy artifact build from the 'build environment'
COPY ./dist /usr/share/nginx/html


# expose port 80
EXPOSE 80
# run nginx
CMD ["nginx", "-g", "daemon off;"]





# docker build -t vue-prod -f Dockerfile-build-app .
# docker run -itd -p 8080:80 vue-prod                                                                                                   
                                                                                                                


