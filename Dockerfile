FROM public.ecr.aws/lambda/nodejs:14

COPY package.json package-lock.json /var/task/
RUN npm i

COPY index.js /var/task/

CMD ["index.handler"]
